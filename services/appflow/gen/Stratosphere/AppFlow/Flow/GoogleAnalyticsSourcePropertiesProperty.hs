module Stratosphere.AppFlow.Flow.GoogleAnalyticsSourcePropertiesProperty (
        GoogleAnalyticsSourcePropertiesProperty(..),
        mkGoogleAnalyticsSourcePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GoogleAnalyticsSourcePropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-googleanalyticssourceproperties.html>
    GoogleAnalyticsSourcePropertiesProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-googleanalyticssourceproperties.html#cfn-appflow-flow-googleanalyticssourceproperties-object>
                                             object :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGoogleAnalyticsSourcePropertiesProperty ::
  Value Prelude.Text -> GoogleAnalyticsSourcePropertiesProperty
mkGoogleAnalyticsSourcePropertiesProperty object
  = GoogleAnalyticsSourcePropertiesProperty
      {haddock_workaround_ = (), object = object}
instance ToResourceProperties GoogleAnalyticsSourcePropertiesProperty where
  toResourceProperties GoogleAnalyticsSourcePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.GoogleAnalyticsSourceProperties",
         supportsTags = Prelude.False,
         properties = ["Object" JSON..= object]}
instance JSON.ToJSON GoogleAnalyticsSourcePropertiesProperty where
  toJSON GoogleAnalyticsSourcePropertiesProperty {..}
    = JSON.object ["Object" JSON..= object]
instance Property "Object" GoogleAnalyticsSourcePropertiesProperty where
  type PropertyType "Object" GoogleAnalyticsSourcePropertiesProperty = Value Prelude.Text
  set newValue GoogleAnalyticsSourcePropertiesProperty {..}
    = GoogleAnalyticsSourcePropertiesProperty {object = newValue, ..}