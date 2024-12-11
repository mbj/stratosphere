module Stratosphere.Cognito.LogDeliveryConfiguration.FirehoseConfigurationProperty (
        FirehoseConfigurationProperty(..), mkFirehoseConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FirehoseConfigurationProperty
  = FirehoseConfigurationProperty {streamArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFirehoseConfigurationProperty :: FirehoseConfigurationProperty
mkFirehoseConfigurationProperty
  = FirehoseConfigurationProperty {streamArn = Prelude.Nothing}
instance ToResourceProperties FirehoseConfigurationProperty where
  toResourceProperties FirehoseConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::LogDeliveryConfiguration.FirehoseConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "StreamArn" Prelude.<$> streamArn])}
instance JSON.ToJSON FirehoseConfigurationProperty where
  toJSON FirehoseConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "StreamArn" Prelude.<$> streamArn]))
instance Property "StreamArn" FirehoseConfigurationProperty where
  type PropertyType "StreamArn" FirehoseConfigurationProperty = Value Prelude.Text
  set newValue FirehoseConfigurationProperty {}
    = FirehoseConfigurationProperty
        {streamArn = Prelude.pure newValue, ..}