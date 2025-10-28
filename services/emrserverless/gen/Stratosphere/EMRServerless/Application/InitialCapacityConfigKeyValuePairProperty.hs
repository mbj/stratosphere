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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrserverless-application-initialcapacityconfigkeyvaluepair.html>
    InitialCapacityConfigKeyValuePairProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrserverless-application-initialcapacityconfigkeyvaluepair.html#cfn-emrserverless-application-initialcapacityconfigkeyvaluepair-key>
                                               key :: (Value Prelude.Text),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrserverless-application-initialcapacityconfigkeyvaluepair.html#cfn-emrserverless-application-initialcapacityconfigkeyvaluepair-value>
                                               value :: InitialCapacityConfigProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInitialCapacityConfigKeyValuePairProperty ::
  Value Prelude.Text
  -> InitialCapacityConfigProperty
     -> InitialCapacityConfigKeyValuePairProperty
mkInitialCapacityConfigKeyValuePairProperty key value
  = InitialCapacityConfigKeyValuePairProperty
      {haddock_workaround_ = (), key = key, value = value}
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