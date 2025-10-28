module Stratosphere.WAFRegional.WebACL.ActionProperty (
        ActionProperty(..), mkActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-webacl-action.html>
    ActionProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-webacl-action.html#cfn-wafregional-webacl-action-type>
                    type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkActionProperty :: Value Prelude.Text -> ActionProperty
mkActionProperty type'
  = ActionProperty {haddock_workaround_ = (), type' = type'}
instance ToResourceProperties ActionProperty where
  toResourceProperties ActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFRegional::WebACL.Action",
         supportsTags = Prelude.False, properties = ["Type" JSON..= type']}
instance JSON.ToJSON ActionProperty where
  toJSON ActionProperty {..} = JSON.object ["Type" JSON..= type']
instance Property "Type" ActionProperty where
  type PropertyType "Type" ActionProperty = Value Prelude.Text
  set newValue ActionProperty {..}
    = ActionProperty {type' = newValue, ..}