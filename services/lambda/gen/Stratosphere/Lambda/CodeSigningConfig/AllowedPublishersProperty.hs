module Stratosphere.Lambda.CodeSigningConfig.AllowedPublishersProperty (
        AllowedPublishersProperty(..), mkAllowedPublishersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AllowedPublishersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-codesigningconfig-allowedpublishers.html>
    AllowedPublishersProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-codesigningconfig-allowedpublishers.html#cfn-lambda-codesigningconfig-allowedpublishers-signingprofileversionarns>
                               signingProfileVersionArns :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAllowedPublishersProperty ::
  ValueList Prelude.Text -> AllowedPublishersProperty
mkAllowedPublishersProperty signingProfileVersionArns
  = AllowedPublishersProperty
      {haddock_workaround_ = (),
       signingProfileVersionArns = signingProfileVersionArns}
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
  set newValue AllowedPublishersProperty {..}
    = AllowedPublishersProperty
        {signingProfileVersionArns = newValue, ..}