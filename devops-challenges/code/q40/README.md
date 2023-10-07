# Configuration Management with Puppet

## Getting Started

1. **Install Puppet Master and Agent**: Follow the instructions [here](https://puppet.com/docs/puppet/latest/puppet_index.html).

2. **Clone this repository**:
    ```bash
    git clone https://github.com/your-repo.git
    ```
3. **Navigate to project directory**:
    ```bash
    cd puppet-config-management
    ```

## How to Run

1. **Apply Puppet Manifests**:
    ```bash
    sudo puppet apply manifests/site.pp
    ```

2. **Run Tests**:
    ```bash
    rspec spec/classes/apache_spec.rb
    ```

## How to Verify

1. **Check Web Server**: Access the web server to ensure it's running.

2. **Check Users**: Validate that the user accounts have been created with specified permissions.

3. **Run Tests**: Ensure that all your rspec tests pass.

