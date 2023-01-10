
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-customcomponent.html

module Stratosphere.ResourceProperties.ApplicationInsightsApplicationCustomComponent where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ApplicationInsightsApplicationCustomComponent. See
-- 'applicationInsightsApplicationCustomComponent' for a more convenient
-- constructor.
data ApplicationInsightsApplicationCustomComponent =
  ApplicationInsightsApplicationCustomComponent
  { _applicationInsightsApplicationCustomComponentComponentName :: Val Text
  , _applicationInsightsApplicationCustomComponentResourceList :: ValList Text
  } deriving (Show, Eq)

instance ToJSON ApplicationInsightsApplicationCustomComponent where
  toJSON ApplicationInsightsApplicationCustomComponent{..} =
    object $
    catMaybes
    [ (Just . ("ComponentName",) . toJSON) _applicationInsightsApplicationCustomComponentComponentName
    , (Just . ("ResourceList",) . toJSON) _applicationInsightsApplicationCustomComponentResourceList
    ]

-- | Constructor for 'ApplicationInsightsApplicationCustomComponent'
-- containing required fields as arguments.
applicationInsightsApplicationCustomComponent
  :: Val Text -- ^ 'aiaccComponentName'
  -> ValList Text -- ^ 'aiaccResourceList'
  -> ApplicationInsightsApplicationCustomComponent
applicationInsightsApplicationCustomComponent componentNamearg resourceListarg =
  ApplicationInsightsApplicationCustomComponent
  { _applicationInsightsApplicationCustomComponentComponentName = componentNamearg
  , _applicationInsightsApplicationCustomComponentResourceList = resourceListarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-customcomponent.html#cfn-applicationinsights-application-customcomponent-componentname
aiaccComponentName :: Lens' ApplicationInsightsApplicationCustomComponent (Val Text)
aiaccComponentName = lens _applicationInsightsApplicationCustomComponentComponentName (\s a -> s { _applicationInsightsApplicationCustomComponentComponentName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-customcomponent.html#cfn-applicationinsights-application-customcomponent-resourcelist
aiaccResourceList :: Lens' ApplicationInsightsApplicationCustomComponent (ValList Text)
aiaccResourceList = lens _applicationInsightsApplicationCustomComponentResourceList (\s a -> s { _applicationInsightsApplicationCustomComponentResourceList = a })
