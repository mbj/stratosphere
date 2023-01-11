
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinition-logger.html

module Stratosphere.ResourceProperties.GreengrassLoggerDefinitionLogger where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for GreengrassLoggerDefinitionLogger. See
-- 'greengrassLoggerDefinitionLogger' for a more convenient constructor.
data GreengrassLoggerDefinitionLogger =
  GreengrassLoggerDefinitionLogger
  { _greengrassLoggerDefinitionLoggerComponent :: Val Text
  , _greengrassLoggerDefinitionLoggerId :: Val Text
  , _greengrassLoggerDefinitionLoggerLevel :: Val Text
  , _greengrassLoggerDefinitionLoggerSpace :: Maybe (Val Integer)
  , _greengrassLoggerDefinitionLoggerType :: Val Text
  } deriving (Show, Eq)

instance ToJSON GreengrassLoggerDefinitionLogger where
  toJSON GreengrassLoggerDefinitionLogger{..} =
    object $
    catMaybes
    [ (Just . ("Component",) . toJSON) _greengrassLoggerDefinitionLoggerComponent
    , (Just . ("Id",) . toJSON) _greengrassLoggerDefinitionLoggerId
    , (Just . ("Level",) . toJSON) _greengrassLoggerDefinitionLoggerLevel
    , fmap (("Space",) . toJSON) _greengrassLoggerDefinitionLoggerSpace
    , (Just . ("Type",) . toJSON) _greengrassLoggerDefinitionLoggerType
    ]

-- | Constructor for 'GreengrassLoggerDefinitionLogger' containing required
-- fields as arguments.
greengrassLoggerDefinitionLogger
  :: Val Text -- ^ 'gldlComponent'
  -> Val Text -- ^ 'gldlId'
  -> Val Text -- ^ 'gldlLevel'
  -> Val Text -- ^ 'gldlType'
  -> GreengrassLoggerDefinitionLogger
greengrassLoggerDefinitionLogger componentarg idarg levelarg typearg =
  GreengrassLoggerDefinitionLogger
  { _greengrassLoggerDefinitionLoggerComponent = componentarg
  , _greengrassLoggerDefinitionLoggerId = idarg
  , _greengrassLoggerDefinitionLoggerLevel = levelarg
  , _greengrassLoggerDefinitionLoggerSpace = Nothing
  , _greengrassLoggerDefinitionLoggerType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinition-logger.html#cfn-greengrass-loggerdefinition-logger-component
gldlComponent :: Lens' GreengrassLoggerDefinitionLogger (Val Text)
gldlComponent = lens _greengrassLoggerDefinitionLoggerComponent (\s a -> s { _greengrassLoggerDefinitionLoggerComponent = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinition-logger.html#cfn-greengrass-loggerdefinition-logger-id
gldlId :: Lens' GreengrassLoggerDefinitionLogger (Val Text)
gldlId = lens _greengrassLoggerDefinitionLoggerId (\s a -> s { _greengrassLoggerDefinitionLoggerId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinition-logger.html#cfn-greengrass-loggerdefinition-logger-level
gldlLevel :: Lens' GreengrassLoggerDefinitionLogger (Val Text)
gldlLevel = lens _greengrassLoggerDefinitionLoggerLevel (\s a -> s { _greengrassLoggerDefinitionLoggerLevel = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinition-logger.html#cfn-greengrass-loggerdefinition-logger-space
gldlSpace :: Lens' GreengrassLoggerDefinitionLogger (Maybe (Val Integer))
gldlSpace = lens _greengrassLoggerDefinitionLoggerSpace (\s a -> s { _greengrassLoggerDefinitionLoggerSpace = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinition-logger.html#cfn-greengrass-loggerdefinition-logger-type
gldlType :: Lens' GreengrassLoggerDefinitionLogger (Val Text)
gldlType = lens _greengrassLoggerDefinitionLoggerType (\s a -> s { _greengrassLoggerDefinitionLoggerType = a })
