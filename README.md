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
        tabsize => 2
      )
    );
        

# Parameters

## tabsize

The size of tab in spaces. Default value is `2`.

# AUTHOR

[Alexey Melezhik](mailto:gmail.com)


