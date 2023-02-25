module Stratosphere.WAFRegional.WebACLAssociation (
        WebACLAssociation(..), mkWebACLAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WebACLAssociation
  = WebACLAssociation {resourceArn :: (Value Prelude.Text),
                       webACLId :: (Value Prelude.Text)}
mkWebACLAssociation ::
  Value Prelude.Text -> Value Prelude.Text -> WebACLAssociation
mkWebACLAssociation resourceArn webACLId
  = WebACLAssociation
      {resourceArn = resourceArn, webACLId = webACLId}
instance ToResourceProperties WebACLAssociation where
  toResourceProperties WebACLAssociation {..}
    = ResourceProperties
        {awsType = "AWS::WAFRegional::WebACLAssociation",
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