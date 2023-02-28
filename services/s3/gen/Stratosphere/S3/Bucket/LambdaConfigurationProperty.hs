module Stratosphere.S3.Bucket.LambdaConfigurationProperty (
        module Exports, LambdaConfigurationProperty(..),
        mkLambdaConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.Bucket.NotificationFilterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LambdaConfigurationProperty
  = LambdaConfigurationProperty {event :: (Value Prelude.Text),
                                 filter :: (Prelude.Maybe NotificationFilterProperty),
                                 function :: (Value Prelude.Text)}
mkLambdaConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> LambdaConfigurationProperty
mkLambdaConfigurationProperty event function
  = LambdaConfigurationProperty
      {event = event, function = function, filter = Prelude.Nothing}
instance ToResourceProperties LambdaConfigurationProperty where
  toResourceProperties LambdaConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.LambdaConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Event" JSON..= event, "Function" JSON..= function]
                           (Prelude.catMaybes [(JSON..=) "Filter" Prelude.<$> filter]))}
instance JSON.ToJSON LambdaConfigurationProperty where
  toJSON LambdaConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Event" JSON..= event, "Function" JSON..= function]
              (Prelude.catMaybes [(JSON..=) "Filter" Prelude.<$> filter])))
instance Property "Event" LambdaConfigurationProperty where
  type PropertyType "Event" LambdaConfigurationProperty = Value Prelude.Text
  set newValue LambdaConfigurationProperty {..}
    = LambdaConfigurationProperty {event = newValue, ..}
instance Property "Filter" LambdaConfigurationProperty where
  type PropertyType "Filter" LambdaConfigurationProperty = NotificationFilterProperty
  set newValue LambdaConfigurationProperty {..}
    = LambdaConfigurationProperty {filter = Prelude.pure newValue, ..}
instance Property "Function" LambdaConfigurationProperty where
  type PropertyType "Function" LambdaConfigurationProperty = Value Prelude.Text
  set newValue LambdaConfigurationProperty {..}
    = LambdaConfigurationProperty {function = newValue, ..}