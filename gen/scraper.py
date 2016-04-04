#!/usr/bin/env python

# This Python script uses BeautifulSoup to scrape AWS CloudFormation docs and
# create JSON templates. You still have to manually edit the resulting template
# because not all types are known, and dependencies need to be declared.

from bs4 import BeautifulSoup
from collections import OrderedDict
import json
import requests
import sys


def main(url):
    page_text = requests.get(url).text
    soup = BeautifulSoup(page_text, "html.parser")
    title_tag = soup.find("div", attrs={"class": "titlepage"})
    name = title_tag.text
    if "::" in name:
        type_ = name
        name = name.split("::")[-1]
    else:
        type_ = None

    docs = title_tag.find_next_siblings("p")
    docstring = "\n".join([remove_extra_space(d.text) for d in docs])
    variables = get_variables(soup)

    out_dict = OrderedDict()
    out_dict["Name"] = name
    if type_:
        out_dict["Type"] = type_
    out_dict["Documentation"] = docstring
    out_dict["Parameters"] = variables

    json_out = json.dumps(out_dict, indent=2)
    print(json_out)


def get_variables(soup):
    variable_list_tag = soup.find("div", attrs={"class": "variablelist"})
    var_name_tags = variable_list_tag.find_all("dt")
    variables = []
    for name_tag in var_name_tags:
        var_name = name_tag.find("code").text
        contents_tag = name_tag.find_next_sibling("dd")
        docs = variable_docs(contents_tag)
        var_required = variable_property(contents_tag, "Required")
        var_type = variable_property(contents_tag, "Type")
        variables.append(OrderedDict([
            ("Name", var_name),
            ("Type", _type_alternatives.get(var_type, var_type)),
            ("Documentation", "\n".join(docs)),
            ("Required", var_required == "Yes"),
        ]))
    return variables


_type_alternatives = {
    "String": "Text",
    "Boolean": "Bool'",
}


def variable_docs(contents_tag):
    all_paras = [p.text for p in contents_tag.find_all("p")]
    docs = []
    for para in all_paras:
        if para.strip().startswith("Required"):
            break
        docs.append(remove_extra_space(para))
    return docs


def variable_property(contents_tag, prop_name):
    prop_tag = contents_tag.find(["p", "span", "em"], text=prop_name)
    if prop_tag is None:
        return None
    prop = prop_tag.find_parent("p").text.strip()
    if prop.startswith(prop_name + ": "):
        prop = prop[len(prop_name + ": "):]
    return prop


def remove_extra_space(string):
    return " ".join(string.split())

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: scraper.py <url>")
        sys.exit(1)
    main(sys.argv[1])
