require "spec_helper"

describe Lita::Handlers::Image, lita_handler: true do
  it { is_expected.to route_command("applause").to(:applause) }
  it { is_expected.to route_command("applaud").to(:applause) }
  it { is_expected.to route_command("bravo").to(:applause) }
  it { is_expected.to route_command("slow clap").to(:applause) }
  it { is_expected.to route_command("doge me").to(:doge) }
  it { is_expected.to route_command("chuckle").to(:chuckle) }
  it { is_expected.to route_command("5\5").to(:brettyGood) }  
  it { is_expected.to route_command("lunch suggest").to(:lunch) }  
  it { is_expected.to route_command("success baby").to(:success) }
  it { is_expected.to route_command("fail").to(:fail) }
  it { is_expected.to route_command("digital style").to(:digitalStyle) }
  it { is_expected.to route_command("ship it").to(:shipIt) }
end
