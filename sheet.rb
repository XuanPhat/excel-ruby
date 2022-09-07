require 'roo'
require 'spreadsheet'
write_xlsx = Spreadsheet::Workbook.new
sheet = write_xlsx.create_worksheet :name => 'test pro'
xlsx = Roo::Excelx.new('./Contact Rikai.xlsx')
xlsx_sheet_1 = xlsx.sheet('None IT Companies')
xlsx = Roo::Excelx.new('./Contact Rikai.xlsx')
xlsx_sheet_2 = xlsx.sheet('Non IT 0829')
array_duplicate = []
array_2_list_no_dupplicate = []
array_1_list_no_dupplicate = []

puts '----------START-------------'
xlsx_sheet_1.each_with_index(Key:'Key',Company_name: 'Company Name',Category:'Category',Company_Url: 'Company Url',last_sent_time:'Last Sent Time',sent_by: 'Sent By') do |data1,index1|
    xlsx_sheet_2.each_with_index(Key:'Key',Company_name: 'Company Name',Category:'Category',Company_Url: 'Company Url',last_sent_time:'Last Sent Time',sent_by: 'Sent By') do |data2,index2|
        if data1[:Company_Url] == data2[:Company_Url]
            puts data2
        end
    end
end


puts "ket thuc"
# write_xlsx.write 'sheet2.xlsx'