import UIKit

class StudentInfoTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var studentArray: [Student]!
    

    @IBOutlet weak var tvStudentDetails: UITableView!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.tvStudentDetails.delegate = self
        self.tvStudentDetails.dataSource = self
        
        loadStudentData()
        
    }
    
    private func loadStudentData()
    {
        studentArray = []
        studentArray.append(Student(Fname: "Pritesh", Lname: "Patel", gender: "Male", result: "Fail"))
        studentArray.append(Student(Fname: "Priya", Lname: "Aggarwal", gender: "Female", result: "Pass"))
        studentArray.append(Student(Fname: "Mohammed Ayub", Lname: "Ali", gender: "Male", result: "Fail"))
        studentArray.append(Student(Fname: "Arturo", Lname: "Gonzalez Castro", gender: "Male", result: "Pass"))
        studentArray.append(Student(Fname: "Gurvinder", Lname: "Singh", gender: "Male", result: "Pass"))
        studentArray.append(Student(Fname: "Pritesh", Lname: "Patel", gender: "Male", result: "Pass"))
        studentArray.append(Student(Fname: "Pritesh", Lname: "Patel", gender: "Male", result: "Fail"))
        studentArray.append(Student(Fname: "Pritesh", Lname: "Patel", gender: "Male", result: "Pass"))
        studentArray.append(Student(Fname: "Pritesh", Lname: "Patel", gender: "Male", result: "Fail"))
        studentArray.append(Student(Fname: "Pritesh", Lname: "Patel", gender: "Male", result: "Pass"))
        studentArray.append(Student(Fname: "Pritesh", Lname: "Patel", gender: "Male", result: "Pass"))
        studentArray.append(Student(Fname: "Pritesh", Lname: "Patel", gender: "Male", result: "Fail"))
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.studentArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let studentCell = tableView.dequeueReusableCell(withIdentifier: "studentCell") as! StudentTableViewCell
        
        let student = self.studentArray[indexPath.row]
        
        Student.lblstudentName.text = Student.Fname
        Student.lblstudentlastname.text = Student.Lname
        Student.lblGender.text = Student.gender
        Student.lblResult.text = Student.result
        Student.lblResult.textColor = UIColor.green
        if(Student1.result == "Fail")
        {
            Student.lblResult.textColor = UIColor.red
        }
        
        return Student
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130.0
}
}
