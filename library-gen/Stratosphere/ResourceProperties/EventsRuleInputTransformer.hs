{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-inputtransformer.html

module Stratosphere.ResourceProperties.EventsRuleInputTransformer where

import Stratosphere.ResourceImports


-- | Full data type definition for EventsRuleInputTransformer. See
-- 'eventsRuleInputTransformer' for a more convenient constructor.
data EventsRuleInputTransformer =
  EventsRuleInputTransformer
  { _eventsRuleInputTransformerInputPathsMap :: Maybe Object
  , _eventsRuleInputTransformerInputTemplate :: Val Text
  } deriving (Show, Eq)

instance ToJSON EventsRuleInputTransformer where
  toJSON EventsRuleInputTransformer{..} =
    object $
    catMaybes
    [ fmap (("InputPathsMap",) . toJSON) _eventsRuleInputTransformerInputPathsMap
    , (Just . ("InputTemplate",) . toJSON) _eventsRuleInputTransformerInputTemplate
    ]

-- | Constructor for 'EventsRuleInputTransformer' containing required fields
-- as arguments.
eventsRuleInputTransformer
  :: Val Text -- ^ 'eritInputTemplate'
  -> EventsRuleInputTransformer
eventsRuleInputTransformer inputTemplatearg =
  EventsRuleInputTransformer
  { _eventsRuleInputTransformerInputPathsMap = Nothing
  , _eventsRuleInputTransformerInputTemplate = inputTemplatearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-inputtransformer.html#cfn-events-rule-inputtransformer-inputpathsmap
eritInputPathsMap :: Lens' EventsRuleInputTransformer (Maybe Object)
eritInputPathsMap = lens _eventsRuleInputTransformerInputPathsMap (\s a -> s { _eventsRuleInputTransformerInputPathsMap = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-inputtransformer.html#cfn-events-rule-inputtransformer-inputtemplate
eritInputTemplate :: Lens' EventsRuleInputTransformer (Val Text)
eritInputTemplate = lens _eventsRuleInputTransformerInputTemplate (\s a -> s { _eventsRuleInputTransformerInputTemplate = a })
