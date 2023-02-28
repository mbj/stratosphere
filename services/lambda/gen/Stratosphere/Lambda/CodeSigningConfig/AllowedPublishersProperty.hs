module Stratosphere.Lambda.CodeSigningConfig.AllowedPublishersProperty (
        AllowedPublishersProperty(..), mkAllowedPublishersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AllowedPublishersProperty
  = AllowedPublishersProperty {signingProfileVersionArns :: (ValueList Prelude.Text)}
mkAllowedPublishersProperty ::
  ValueList Prelude.Text -> AllowedPublishersProperty
mkAllowedPublishersProperty signingProfileVersionArns
  = AllowedPublishersProperty
      {signingProfileVersionArns = signingProfileVersionArns}
instance ToResourceProperties AllowedPublishersProperty where
  toResourceProperties AllowedPublishersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::CodeSigningConfig.AllowedPublishers",
         supportsTags = Prelude.False,
         properties = ["SigningProfileVersionArns"
                         JSON..= signingProfileVersionArns]}
instance JSON.ToJSON AllowedPublishersProperty where
  toJSON AllowedPublishersProperty {..}
    = JSON.object
        ["SigningProfileVersionArns" JSON..= signingProfileVersionArns]
instance Property "SigningProfileVersionArns" AllowedPublishersProperty where
  type PropertyType "SigningProfileVersionArns" AllowedPublishersProperty = ValueList Prelude.Text
  set newValue AllowedPublishersProperty {}
    = AllowedPublishersProperty
        {signingProfileVersionArns = newValue, ..}