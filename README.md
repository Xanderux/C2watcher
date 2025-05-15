## C2watcher

**C2watcher** is a lightweight and automated threat intelligence tool designed to track and monitor Command and Control (C2) infrastructures on a daily basis using Onyphe's powerful API.

The tool leverages Onyphe queries to detect new or active C2 panels across the web and stores the results in a structured and searchable format for further analysis or alerting.

## 📦 Features

- Daily execution via GitHub Actions
- Customizable Onyphe queries
- Result storage in flat files for easy integration
- Easily extensible with new detection rules

## 📁 Project Structure

- `queries/` – This folder contains Onyphe search rules, each defined in a separate file. These rules are used to detect Command and Control (C2) infrastructure.

- `data/` – This directory stores the daily results of the executed queries. A data file is only created or updated if at least one new C2 infrastructure is detected on that day. This ensures the repository remains clean and focused on relevant findings.


## 🙏 Acknowledgments

Special thanks to [Onyphe](https://www.onyphe.io/) for generously providing a license that powers this project. Their API and infrastructure are crucial for detecting and analyzing C2 activities across the internet.

## 🤝 Contributing

Contributions are welcome! To add a new detection rule:

1. Create a new file in the `queries/` directory.
2. The file should contain a valid [Onyphe](https://www.onyphe.io/) search syntax.
3. Make a pull request with a descriptive name and rationale for the added rule.

Please ensure your query is effective, non-redundant, and does not generate excessive noise.

## 📄 License

This entire project — including the code, queries, and data — is licensed under the Creative Commons Attribution-NonCommercial 4.0 International (CC BY-NC 4.0) license.

You are free to share and adapt the material for non-commercial purposes, provided appropriate credit is given and any changes are indicated. Commercial use of any part of this project is strictly prohibited without prior written permission.

For full terms, see [https://creativecommons.org/licenses/by-nc/4.0/](https://creativecommons.org/licenses/by-nc/4.0/).
