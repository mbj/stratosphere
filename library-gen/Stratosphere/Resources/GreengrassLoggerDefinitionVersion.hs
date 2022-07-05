{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-loggerdefinitionversion.html

module Stratosphere.Resources.GreengrassLoggerDefinitionVersion where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GreengrassLoggerDefinitionVersionLogger

-- | Full data type definition for GreengrassLoggerDefinitionVersion. See
-- 'greengrassLoggerDefinitionVersion' for a more convenient constructor.
data GreengrassLoggerDefinitionVersion =
  GreengrassLoggerDefinitionVersion
  { _greengrassLoggerDefinitionVersionLoggerDefinitionId :: Val Text
  , _greengrassLoggerDefinitionVersionLoggers :: [GreengrassLoggerDefinitionVersionLogger]
  } deriving (Show, Eq)

instance ToResourceProperties GreengrassLoggerDefinitionVersion where
  toResourceProperties GreengrassLoggerDefinitionVersion{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Greengrass::LoggerDefinitionVersion"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("LoggerDefinitionId",) . toJSON) _greengrassLoggerDefinitionVersionLoggerDefinitionId
        , (Just . ("Loggers",) . toJSON) _greengrassLoggerDefinitionVersionLoggers
        ]
    }

-- | Constructor for 'GreengrassLoggerDefinitionVersion' containing required
-- fields as arguments.
greengrassLoggerDefinitionVersion
  :: Val Text -- ^ 'gldvLoggerDefinitionId'
  -> [GreengrassLoggerDefinitionVersionLogger] -- ^ 'gldvLoggers'
  -> GreengrassLoggerDefinitionVersion
greengrassLoggerDefinitionVersion loggerDefinitionIdarg loggersarg =
  GreengrassLoggerDefinitionVersion
  { _greengrassLoggerDefinitionVersionLoggerDefinitionId = loggerDefinitionIdarg
  , _greengrassLoggerDefinitionVersionLoggers = loggersarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-loggerdefinitionversion.html#cfn-greengrass-loggerdefinitionversion-loggerdefinitionid
gldvLoggerDefinitionId :: Lens' GreengrassLoggerDefinitionVersion (Val Text)
gldvLoggerDefinitionId = lens _greengrassLoggerDefinitionVersionLoggerDefinitionId (\s a -> s { _greengrassLoggerDefinitionVersionLoggerDefinitionId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-loggerdefinitionversion.html#cfn-greengrass-loggerdefinitionversion-loggers
gldvLoggers :: Lens' GreengrassLoggerDefinitionVersion [GreengrassLoggerDefinitionVersionLogger]
gldvLoggers = lens _greengrassLoggerDefinitionVersionLoggers (\s a -> s { _greengrassLoggerDefinitionVersionLoggers = a })
