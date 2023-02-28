module Stratosphere.WAFv2.WebACLAssociation (
        WebACLAssociation(..), mkWebACLAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WebACLAssociation
  = WebACLAssociation {resourceArn :: (Value Prelude.Text),
                       webACLArn :: (Value Prelude.Text)}
mkWebACLAssociation ::
  Value Prelude.Text -> Value Prelude.Text -> WebACLAssociation
mkWebACLAssociation resourceArn webACLArn
  = WebACLAssociation
      {resourceArn = resourceArn, webACLArn = webACLArn}
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