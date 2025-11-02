module Stratosphere.WAFv2.WebACLAssociation (
        WebACLAssociation(..), mkWebACLAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WebACLAssociation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webaclassociation.html>
    WebACLAssociation {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webaclassociation.html#cfn-wafv2-webaclassociation-resourcearn>
                       resourceArn :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webaclassociation.html#cfn-wafv2-webaclassociation-webaclarn>
                       webACLArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWebACLAssociation ::
  Value Prelude.Text -> Value Prelude.Text -> WebACLAssociation
mkWebACLAssociation resourceArn webACLArn
  = WebACLAssociation
      {haddock_workaround_ = (), resourceArn = resourceArn,
       webACLArn = webACLArn}
instance ToResourceProperties WebACLAssociation where
  toResourceProperties WebACLAssociation {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACLAssociation",
         supportsTags = Prelude.False,
         properties = ["ResourceArn" JSON..= resourceArn,
                       "WebACLArn" JSON..= webACLArn]}
instance JSON.ToJSON WebACLAssociation where
  toJSON WebACLAssociation {..}
    = JSON.object
        ["ResourceArn" JSON..= resourceArn, "WebACLArn" JSON..= webACLArn]
instance Property "ResourceArn" WebACLAssociation where
  type PropertyType "ResourceArn" WebACLAssociation = Value Prelude.Text
  set newValue WebACLAssociation {..}
    = WebACLAssociation {resourceArn = newValue, ..}
instance Property "WebACLArn" WebACLAssociation where
  type PropertyType "WebACLArn" WebACLAssociation = Value Prelude.Text
  set newValue WebACLAssociation {..}
    = WebACLAssociation {webACLArn = newValue, ..}