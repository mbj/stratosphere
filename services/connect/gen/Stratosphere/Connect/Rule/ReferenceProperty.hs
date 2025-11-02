module Stratosphere.Connect.Rule.ReferenceProperty (
        ReferenceProperty(..), mkReferenceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReferenceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-rule-reference.html>
    ReferenceProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-rule-reference.html#cfn-connect-rule-reference-type>
                       type' :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-rule-reference.html#cfn-connect-rule-reference-value>
                       value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReferenceProperty ::
  Value Prelude.Text -> Value Prelude.Text -> ReferenceProperty
mkReferenceProperty type' value
  = ReferenceProperty
      {haddock_workaround_ = (), type' = type', value = value}
instance ToResourceProperties ReferenceProperty where
  toResourceProperties ReferenceProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::Rule.Reference",
         supportsTags = Prelude.False,
         properties = ["Type" JSON..= type', "Value" JSON..= value]}
instance JSON.ToJSON ReferenceProperty where
  toJSON ReferenceProperty {..}
    = JSON.object ["Type" JSON..= type', "Value" JSON..= value]
instance Property "Type" ReferenceProperty where
  type PropertyType "Type" ReferenceProperty = Value Prelude.Text
  set newValue ReferenceProperty {..}
    = ReferenceProperty {type' = newValue, ..}
instance Property "Value" ReferenceProperty where
  type PropertyType "Value" ReferenceProperty = Value Prelude.Text
  set newValue ReferenceProperty {..}
    = ReferenceProperty {value = newValue, ..}