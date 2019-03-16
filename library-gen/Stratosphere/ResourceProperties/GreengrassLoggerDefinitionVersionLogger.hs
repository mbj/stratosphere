{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinitionversion-logger.html

module Stratosphere.ResourceProperties.GreengrassLoggerDefinitionVersionLogger where

import Stratosphere.ResourceImports


-- | Full data type definition for GreengrassLoggerDefinitionVersionLogger.
-- See 'greengrassLoggerDefinitionVersionLogger' for a more convenient
-- constructor.
data GreengrassLoggerDefinitionVersionLogger =
  GreengrassLoggerDefinitionVersionLogger
  { _greengrassLoggerDefinitionVersionLoggerComponent :: Val Text
  , _greengrassLoggerDefinitionVersionLoggerId :: Val Text
  , _greengrassLoggerDefinitionVersionLoggerLevel :: Val Text
  , _greengrassLoggerDefinitionVersionLoggerSpace :: Maybe (Val Integer)
  , _greengrassLoggerDefinitionVersionLoggerType :: Val Text
  } deriving (Show, Eq)

instance ToJSON GreengrassLoggerDefinitionVersionLogger where
  toJSON GreengrassLoggerDefinitionVersionLogger{..} =
    object $
    catMaybes
    [ (Just . ("Component",) . toJSON) _greengrassLoggerDefinitionVersionLoggerComponent
    , (Just . ("Id",) . toJSON) _greengrassLoggerDefinitionVersionLoggerId
    , (Just . ("Level",) . toJSON) _greengrassLoggerDefinitionVersionLoggerLevel
    , fmap (("Space",) . toJSON) _greengrassLoggerDefinitionVersionLoggerSpace
    , (Just . ("Type",) . toJSON) _greengrassLoggerDefinitionVersionLoggerType
    ]

-- | Constructor for 'GreengrassLoggerDefinitionVersionLogger' containing
-- required fields as arguments.
greengrassLoggerDefinitionVersionLogger
  :: Val Text -- ^ 'gldvlComponent'
  -> Val Text -- ^ 'gldvlId'
  -> Val Text -- ^ 'gldvlLevel'
  -> Val Text -- ^ 'gldvlType'
  -> GreengrassLoggerDefinitionVersionLogger
greengrassLoggerDefinitionVersionLogger componentarg idarg levelarg typearg =
  GreengrassLoggerDefinitionVersionLogger
  { _greengrassLoggerDefinitionVersionLoggerComponent = componentarg
  , _greengrassLoggerDefinitionVersionLoggerId = idarg
  , _greengrassLoggerDefinitionVersionLoggerLevel = levelarg
  , _greengrassLoggerDefinitionVersionLoggerSpace = Nothing
  , _greengrassLoggerDefinitionVersionLoggerType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinitionversion-logger.html#cfn-greengrass-loggerdefinitionversion-logger-component
gldvlComponent :: Lens' GreengrassLoggerDefinitionVersionLogger (Val Text)
gldvlComponent = lens _greengrassLoggerDefinitionVersionLoggerComponent (\s a -> s { _greengrassLoggerDefinitionVersionLoggerComponent = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinitionversion-logger.html#cfn-greengrass-loggerdefinitionversion-logger-id
gldvlId :: Lens' GreengrassLoggerDefinitionVersionLogger (Val Text)
gldvlId = lens _greengrassLoggerDefinitionVersionLoggerId (\s a -> s { _greengrassLoggerDefinitionVersionLoggerId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinitionversion-logger.html#cfn-greengrass-loggerdefinitionversion-logger-level
gldvlLevel :: Lens' GreengrassLoggerDefinitionVersionLogger (Val Text)
gldvlLevel = lens _greengrassLoggerDefinitionVersionLoggerLevel (\s a -> s { _greengrassLoggerDefinitionVersionLoggerLevel = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinitionversion-logger.html#cfn-greengrass-loggerdefinitionversion-logger-space
gldvlSpace :: Lens' GreengrassLoggerDefinitionVersionLogger (Maybe (Val Integer))
gldvlSpace = lens _greengrassLoggerDefinitionVersionLoggerSpace (\s a -> s { _greengrassLoggerDefinitionVersionLoggerSpace = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinitionversion-logger.html#cfn-greengrass-loggerdefinitionversion-logger-type
gldvlType :: Lens' GreengrassLoggerDefinitionVersionLogger (Val Text)
gldvlType = lens _greengrassLoggerDefinitionVersionLoggerType (\s a -> s { _greengrassLoggerDefinitionVersionLoggerType = a })
