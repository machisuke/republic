json.merge! @lesson.attributes
json.department @lesson.department.department_name
json.faculty @lesson.faculty.faculty_name
json.lesson_detail @lesson.lesson_detail
json.lesson_schedule @lesson.lesson_schedules
json.evaluations @lesson.evaluations
json.text_books @lesson.text_book_lessons.map{|tbl| array = tbl.attributes
                                                    array['book_data'] = tbl.text_book
                                                    array
                                              }
json.results @lesson.results
