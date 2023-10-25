require 'test/unit'
require_relative 'report'
require_relative 'proc_report'
require_relative 'html_formater'
require_relative 'plain_text_formater'

class StrategyTest < Test::Unit::TestCase
  def setup
    @html_expected = "<html>\n  <head>\n    <title>Monthly Report</title>\n  </head>\n  <body>\n    <p>Things are going</p>\n    <p>really, really well.</p>\n  </body>\n</html>\n"
    @plain_text_expected = "*******Monthly Report*******\nThings are going\nreally, really well.\n"
  end

  def test_it_prints_a_plain_text_report
    report = Report.new(PlainTextFormater.new)

    output = capture_output do
      report.output_report
    end

    assert_equal @plain_text_expected, output.first
  end

  def test_it_prints_an_html_report
    report = Report.new(HTMLFormater.new)

    output = capture_output do
      report.output_report
    end

    assert_equal @html_expected, output.first
  end

  def test_it_prints_an_html_report_with_procs
    html_formater = Proc.new do |context|
      puts('<html>')
      puts('  <head>')
      puts("    <title>#{context.title}</title>")
      puts('  </head>')
      puts('  <body>')
      context.text.each do |line|
        puts("    <p>#{line}</p>" )
      end
      puts('  </body>')
      puts('</html>')
    end

    report = ProcReport.new(&html_formater)

    output = capture_output do
      report.output_report
    end

    assert_equal @html_expected, output.first
  end

  def test_it_prints_a_plain_text_report_with_procs
    plain_text_formater = lambda do |context|
      puts("*******#{context.title}*******")

      context.text.each do |line|
        puts(line)
      end
    end

    report = ProcReport.new(&plain_text_formater)

    output = capture_output do
      report.output_report
    end

    assert_equal @plain_text_expected, output.first
  end
end
