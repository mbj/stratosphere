module Stratosphere.CloudTrail.EventDataStore.ContextKeySelectorProperty (
        ContextKeySelectorProperty(..), mkContextKeySelectorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ContextKeySelectorProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-eventdatastore-contextkeyselector.html>
    ContextKeySelectorProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-eventdatastore-contextkeyselector.html#cfn-cloudtrail-eventdatastore-contextkeyselector-equals>
                                equals :: (ValueList Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-eventdatastore-contextkeyselector.html#cfn-cloudtrail-eventdatastore-contextkeyselector-type>
                                type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContextKeySelectorProperty ::
  ValueList Prelude.Text
  -> Value Prelude.Text -> ContextKeySelectorProperty
mkContextKeySelectorProperty equals type'
  = ContextKeySelectorProperty
      {haddock_workaround_ = (), equals = equals, type' = type'}
instance ToResourceProperties ContextKeySelectorProperty where
  toResourceProperties ContextKeySelectorProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudTrail::EventDataStore.ContextKeySelector",
         supportsTags = Prelude.False,
         properties = ["Equals" JSON..= equals, "Type" JSON..= type']}
instance JSON.ToJSON ContextKeySelectorProperty where
  toJSON ContextKeySelectorProperty {..}
    = JSON.object ["Equals" JSON..= equals, "Type" JSON..= type']
instance Property "Equals" ContextKeySelectorProperty where
  type PropertyType "Equals" ContextKeySelectorProperty = ValueList Prelude.Text
  set newValue ContextKeySelectorProperty {..}
    = ContextKeySelectorProperty {equals = newValue, ..}
instance Property "Type" ContextKeySelectorProperty where
  type PropertyType "Type" ContextKeySelectorProperty = Value Prelude.Text
  set newValue ContextKeySelectorProperty {..}
    = ContextKeySelectorProperty {type' = newValue, ..}