module Stratosphere.ApplicationInsights.Application.CustomComponentProperty (
        CustomComponentProperty(..), mkCustomComponentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomComponentProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-customcomponent.html>
    CustomComponentProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-customcomponent.html#cfn-applicationinsights-application-customcomponent-componentname>
                             componentName :: (Value Prelude.Text),
                             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-customcomponent.html#cfn-applicationinsights-application-customcomponent-resourcelist>
                             resourceList :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomComponentProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text -> CustomComponentProperty
mkCustomComponentProperty componentName resourceList
  = CustomComponentProperty
      {componentName = componentName, resourceList = resourceList}
instance ToResourceProperties CustomComponentProperty where
  toResourceProperties CustomComponentProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationInsights::Application.CustomComponent",
         supportsTags = Prelude.False,
         properties = ["ComponentName" JSON..= componentName,
                       "ResourceList" JSON..= resourceList]}
instance JSON.ToJSON CustomComponentProperty where
  toJSON CustomComponentProperty {..}
    = JSON.object
        ["ComponentName" JSON..= componentName,
         "ResourceList" JSON..= resourceList]
instance Property "ComponentName" CustomComponentProperty where
  type PropertyType "ComponentName" CustomComponentProperty = Value Prelude.Text
  set newValue CustomComponentProperty {..}
    = CustomComponentProperty {componentName = newValue, ..}
instance Property "ResourceList" CustomComponentProperty where
  type PropertyType "ResourceList" CustomComponentProperty = ValueList Prelude.Text
  set newValue CustomComponentProperty {..}
    = CustomComponentProperty {resourceList = newValue, ..}