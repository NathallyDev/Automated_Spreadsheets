![Logo do GitHub (https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png)

# Project: Automated Spreadsheets

## Description

This is a simple script developed using **MATLAB** in **Visual Studio Code**.

The code processes data from an Excel spreadsheet named `spreadsheet_name.xls`, concatenates it into a single cell per row in a new spreadsheet, and prepares the data for automatic label printing. The primary goal of this project is to streamline the label creation process using Excel.

## Features:

- **Automatic data processing**:
  - Reads data from a predefined Excel file (`spreadsheet_name.xls`).
  - Concatenates data from multiple cells into a single cell for each row.
- **Output generation**:
  - Creates a new Excel file with the processed data.
- **Ease of use**:
  - Requires minimal input from the user.

---

## Requirements:

- **MATLAB**: Version R2021a or later.
- **Visual Studio Code**: For script editing and execution.
- **Excel Support**:
  - MATLAB must have the `xlswrite` function available (or an alternative for Excel file handling).
- **Operating System**: Windows (recommended for Excel compatibility).

---

## Installation:

1. **Clone the repository**:

   ```bash
   git clone https://github.com/NathallyDev/automated-spreadsheets.git
   ```

2. **Set up MATLAB**:

   - Ensure MATLAB is installed and properly configured.
   - Open the script `automated_spreadsheets.m` in MATLAB or Visual Studio Code with MATLAB support.

3. **Prepare the input spreadsheet**:

   - Place the input Excel file (`spreadsheet_name.xls`) in the same directory as the script.

4. **Run the script**:

   - Execute the script in MATLAB:
     ```matlab
     automated_spreadsheets
     ```

---

## Usage

1. **Prepare the input file**:
   - Ensure the file `spreadsheet_name.xls` is formatted correctly and located in the same directory as the script.

2. **Run the script**:
   - Execute the MATLAB script to process the data.

3. **Check the output file**:
   - A new Excel file will be generated in the same directory, containing the concatenated data.

4. **Print labels**:
   - Use the processed data for automated label printing.

---

## Project Structure

```
/
|-- automated_spreadsheets.m   # Main MATLAB script
|-- spreadsheet_name.xls       # Example input spreadsheet
|-- output_file.xls            # Generated output file (created after execution)
```

---

## Contribution

1. Fork this repository.
2. Create a branch for your feature or fix: `git checkout -b my-feature`.
3. Commit your changes: `git commit -m 'Added my feature'`.
4. Push to the main branch: `git push origin my-feature`.
5. Open a Pull Request.

---

## License

This project is licensed under the MIT License. See the `LICENSE` file for more details.

