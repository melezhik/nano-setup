# SYNOPSIS

Set up nano rc file

# USAGE

    $ cat sparrowfile

    use Sparrowdo;
    
    use v6;
    
    use Sparrowdo;
    
    task_run  %(
      task => 'set my nano rc up',
      plugin => 'nano-setup',
      parameters => %( 
        tabsize => 2,
        user => 'foo'
      )
    );
        

# Parameters

## tabsize

The size of tab in spaces. Default value is `2`.

## user

A Linux user name. Choose this if you want to set up nano for some user.

# AUTHOR

[Alexey Melezhik](mailto:gmail.com)


