module Stratosphere.WAFRegional.WebACLAssociation (
        WebACLAssociation(..), mkWebACLAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WebACLAssociation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-webaclassociation.html>
    WebACLAssociation {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-webaclassociation.html#cfn-wafregional-webaclassociation-resourcearn>
                       resourceArn :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-webaclassociation.html#cfn-wafregional-webaclassociation-webaclid>
                       webACLId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWebACLAssociation ::
  Value Prelude.Text -> Value Prelude.Text -> WebACLAssociation
mkWebACLAssociation resourceArn webACLId
  = WebACLAssociation
      {haddock_workaround_ = (), resourceArn = resourceArn,
       webACLId = webACLId}
instance ToResourceProperties WebACLAssociation where
  toResourceProperties WebACLAssociation {..}
    = ResourceProperties
        {awsType = "AWS::WAFRegional::WebACLAssociation",
         supportsTags = Prelude.False,
         properties = ["ResourceArn" JSON..= resourceArn,
                       "WebACLId" JSON..= webACLId]}
instance JSON.ToJSON WebACLAssociation where
  toJSON WebACLAssociation {..}
    = JSON.object
        ["ResourceArn" JSON..= resourceArn, "WebACLId" JSON..= webACLId]
instance Property "ResourceArn" WebACLAssociation where
  type PropertyType "ResourceArn" WebACLAssociation = Value Prelude.Text
  set newValue WebACLAssociation {..}
    = WebACLAssociation {resourceArn = newValue, ..}
instance Property "WebACLId" WebACLAssociation where
  type PropertyType "WebACLId" WebACLAssociation = Value Prelude.Text
  set newValue WebACLAssociation {..}
    = WebACLAssociation {webACLId = newValue, ..}