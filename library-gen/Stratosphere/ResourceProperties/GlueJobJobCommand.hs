
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-job-jobcommand.html

module Stratosphere.ResourceProperties.GlueJobJobCommand where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for GlueJobJobCommand. See 'glueJobJobCommand'
-- for a more convenient constructor.
data GlueJobJobCommand =
  GlueJobJobCommand
  { _glueJobJobCommandName :: Maybe (Val Text)
  , _glueJobJobCommandPythonVersion :: Maybe (Val Text)
  , _glueJobJobCommandScriptLocation :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON GlueJobJobCommand where
  toJSON GlueJobJobCommand{..} =
    object $
    catMaybes
    [ fmap (("Name",) . toJSON) _glueJobJobCommandName
    , fmap (("PythonVersion",) . toJSON) _glueJobJobCommandPythonVersion
    , fmap (("ScriptLocation",) . toJSON) _glueJobJobCommandScriptLocation
    ]

-- | Constructor for 'GlueJobJobCommand' containing required fields as
-- arguments.
glueJobJobCommand
  :: GlueJobJobCommand
glueJobJobCommand  =
  GlueJobJobCommand
  { _glueJobJobCommandName = Nothing
  , _glueJobJobCommandPythonVersion = Nothing
  , _glueJobJobCommandScriptLocation = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-job-jobcommand.html#cfn-glue-job-jobcommand-name
gjjcName :: Lens' GlueJobJobCommand (Maybe (Val Text))
gjjcName = lens _glueJobJobCommandName (\s a -> s { _glueJobJobCommandName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-job-jobcommand.html#cfn-glue-job-jobcommand-pythonversion
gjjcPythonVersion :: Lens' GlueJobJobCommand (Maybe (Val Text))
gjjcPythonVersion = lens _glueJobJobCommandPythonVersion (\s a -> s { _glueJobJobCommandPythonVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-job-jobcommand.html#cfn-glue-job-jobcommand-scriptlocation
gjjcScriptLocation :: Lens' GlueJobJobCommand (Maybe (Val Text))
gjjcScriptLocation = lens _glueJobJobCommandScriptLocation (\s a -> s { _glueJobJobCommandScriptLocation = a })
