
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinition-loggerdefinitionversion.html

module Stratosphere.ResourceProperties.GreengrassLoggerDefinitionLoggerDefinitionVersion where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GreengrassLoggerDefinitionLogger

-- | Full data type definition for
-- GreengrassLoggerDefinitionLoggerDefinitionVersion. See
-- 'greengrassLoggerDefinitionLoggerDefinitionVersion' for a more convenient
-- constructor.
data GreengrassLoggerDefinitionLoggerDefinitionVersion =
  GreengrassLoggerDefinitionLoggerDefinitionVersion
  { _greengrassLoggerDefinitionLoggerDefinitionVersionLoggers :: [GreengrassLoggerDefinitionLogger]
  } deriving (Show, Eq)

instance ToJSON GreengrassLoggerDefinitionLoggerDefinitionVersion where
  toJSON GreengrassLoggerDefinitionLoggerDefinitionVersion{..} =
    object $
    catMaybes
    [ (Just . ("Loggers",) . toJSON) _greengrassLoggerDefinitionLoggerDefinitionVersionLoggers
    ]

-- | Constructor for 'GreengrassLoggerDefinitionLoggerDefinitionVersion'
-- containing required fields as arguments.
greengrassLoggerDefinitionLoggerDefinitionVersion
  :: [GreengrassLoggerDefinitionLogger] -- ^ 'gldldvLoggers'
  -> GreengrassLoggerDefinitionLoggerDefinitionVersion
greengrassLoggerDefinitionLoggerDefinitionVersion loggersarg =
  GreengrassLoggerDefinitionLoggerDefinitionVersion
  { _greengrassLoggerDefinitionLoggerDefinitionVersionLoggers = loggersarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinition-loggerdefinitionversion.html#cfn-greengrass-loggerdefinition-loggerdefinitionversion-loggers
gldldvLoggers :: Lens' GreengrassLoggerDefinitionLoggerDefinitionVersion [GreengrassLoggerDefinitionLogger]
gldldvLoggers = lens _greengrassLoggerDefinitionLoggerDefinitionVersionLoggers (\s a -> s { _greengrassLoggerDefinitionLoggerDefinitionVersionLoggers = a })
