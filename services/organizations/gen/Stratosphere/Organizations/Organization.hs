module Stratosphere.Organizations.Organization (
        Organization(..), mkOrganization
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Organization
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-organizations-organization.html>
    Organization {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-organizations-organization.html#cfn-organizations-organization-featureset>
                  featureSet :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOrganization :: Organization
mkOrganization
  = Organization
      {haddock_workaround_ = (), featureSet = Prelude.Nothing}
instance ToResourceProperties Organization where
  toResourceProperties Organization {..}
    = ResourceProperties
        {awsType = "AWS::Organizations::Organization",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FeatureSet" Prelude.<$> featureSet])}
instance JSON.ToJSON Organization where
  toJSON Organization {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FeatureSet" Prelude.<$> featureSet]))
instance Property "FeatureSet" Organization where
  type PropertyType "FeatureSet" Organization = Value Prelude.Text
  set newValue Organization {..}
    = Organization {featureSet = Prelude.pure newValue, ..}