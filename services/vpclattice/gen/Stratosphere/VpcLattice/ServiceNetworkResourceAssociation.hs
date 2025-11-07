module Stratosphere.VpcLattice.ServiceNetworkResourceAssociation (
        ServiceNetworkResourceAssociation(..),
        mkServiceNetworkResourceAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ServiceNetworkResourceAssociation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-servicenetworkresourceassociation.html>
    ServiceNetworkResourceAssociation {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-servicenetworkresourceassociation.html#cfn-vpclattice-servicenetworkresourceassociation-resourceconfigurationid>
                                       resourceConfigurationId :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-servicenetworkresourceassociation.html#cfn-vpclattice-servicenetworkresourceassociation-servicenetworkid>
                                       serviceNetworkId :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-servicenetworkresourceassociation.html#cfn-vpclattice-servicenetworkresourceassociation-tags>
                                       tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServiceNetworkResourceAssociation ::
  ServiceNetworkResourceAssociation
mkServiceNetworkResourceAssociation
  = ServiceNetworkResourceAssociation
      {haddock_workaround_ = (),
       resourceConfigurationId = Prelude.Nothing,
       serviceNetworkId = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties ServiceNetworkResourceAssociation where
  toResourceProperties ServiceNetworkResourceAssociation {..}
    = ResourceProperties
        {awsType = "AWS::VpcLattice::ServiceNetworkResourceAssociation",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ResourceConfigurationId"
                              Prelude.<$> resourceConfigurationId,
                            (JSON..=) "ServiceNetworkId" Prelude.<$> serviceNetworkId,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON ServiceNetworkResourceAssociation where
  toJSON ServiceNetworkResourceAssociation {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ResourceConfigurationId"
                 Prelude.<$> resourceConfigurationId,
               (JSON..=) "ServiceNetworkId" Prelude.<$> serviceNetworkId,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "ResourceConfigurationId" ServiceNetworkResourceAssociation where
  type PropertyType "ResourceConfigurationId" ServiceNetworkResourceAssociation = Value Prelude.Text
  set newValue ServiceNetworkResourceAssociation {..}
    = ServiceNetworkResourceAssociation
        {resourceConfigurationId = Prelude.pure newValue, ..}
instance Property "ServiceNetworkId" ServiceNetworkResourceAssociation where
  type PropertyType "ServiceNetworkId" ServiceNetworkResourceAssociation = Value Prelude.Text
  set newValue ServiceNetworkResourceAssociation {..}
    = ServiceNetworkResourceAssociation
        {serviceNetworkId = Prelude.pure newValue, ..}
instance Property "Tags" ServiceNetworkResourceAssociation where
  type PropertyType "Tags" ServiceNetworkResourceAssociation = [Tag]
  set newValue ServiceNetworkResourceAssociation {..}
    = ServiceNetworkResourceAssociation
        {tags = Prelude.pure newValue, ..}