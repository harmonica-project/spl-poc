pragma solidity >=0.7.0 <0.9.0;

contract Storage {
    {% if type == "integer" %}
    uint256 data;
    {% else %}
        {% if type == "string" %}
    string data;
        {% else %}
    string data_hash;
        {% endif %}
    {% endif %}



    {% if type == "integer" %}
        function store(uint256 num) public {
        data = num;
    }
    {% else %}
        {% if type == "string" %}
        function store(string memory str) public {
        data = str;
    }
        {% else %}
        function store(string memory dataHash) public {
        data_hash = num;
    }
        {% endif %}
    {% endif %}
    

    {% if type == "integer" %}
          function retrieve() public view returns (uint256){
        return data;
    }
    {% else %}
        {% if type == "string" %}
        function retrieve() public view returns (string memory){
        return data;
    }
        {% else %}
          function retrieve() public view returns (string memory){
        return data_hash;
    }
        {% endif %}
    {% endif %}
    
  
}