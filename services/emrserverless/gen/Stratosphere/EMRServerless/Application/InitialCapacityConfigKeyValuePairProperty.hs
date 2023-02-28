module Stratosphere.EMRServerless.Application.InitialCapacityConfigKeyValuePairProperty (
        module Exports, InitialCapacityConfigKeyValuePairProperty(..),
        mkInitialCapacityConfigKeyValuePairProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EMRServerless.Application.InitialCapacityConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InitialCapacityConfigKeyValuePairProperty
  = InitialCapacityConfigKeyValuePairProperty {key :: (Value Prelude.Text),
                                               value :: InitialCapacityConfigProperty}
mkInitialCapacityConfigKeyValuePairProperty ::
  Value Prelude.Text
  -> InitialCapacityConfigProperty
     -> InitialCapacityConfigKeyValuePairProperty
mkInitialCapacityConfigKeyValuePairProperty key value
  = InitialCapacityConfigKeyValuePairProperty
      {key = key, value = value}
instance ToResourceProperties InitialCapacityConfigKeyValuePairProperty where
  toResourceProperties InitialCapacityConfigKeyValuePairProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMRServerless::Application.InitialCapacityConfigKeyValuePair",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key, "Value" JSON..= value]}
instance JSON.ToJSON InitialCapacityConfigKeyValuePairProperty where
  toJSON InitialCapacityConfigKeyValuePairProperty {..}
    = JSON.object ["Key" JSON..= key, "Value" JSON..= value]
instance Property "Key" InitialCapacityConfigKeyValuePairProperty where
  type PropertyType "Key" InitialCapacityConfigKeyValuePairProperty = Value Prelude.Text
  set newValue InitialCapacityConfigKeyValuePairProperty {..}
    = InitialCapacityConfigKeyValuePairProperty {key = newValue, ..}
instance Property "Value" InitialCapacityConfigKeyValuePairProperty where
  type PropertyType "Value" InitialCapacityConfigKeyValuePairProperty = InitialCapacityConfigProperty
  set newValue InitialCapacityConfigKeyValuePairProperty {..}
    = InitialCapacityConfigKeyValuePairProperty {value = newValue, ..}