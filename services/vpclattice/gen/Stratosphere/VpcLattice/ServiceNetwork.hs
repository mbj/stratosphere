module Stratosphere.VpcLattice.ServiceNetwork (
        module Exports, ServiceNetwork(..), mkServiceNetwork
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.VpcLattice.ServiceNetwork.SharingConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ServiceNetwork
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-servicenetwork.html>
    ServiceNetwork {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-servicenetwork.html#cfn-vpclattice-servicenetwork-authtype>
                    authType :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-servicenetwork.html#cfn-vpclattice-servicenetwork-name>
                    name :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-servicenetwork.html#cfn-vpclattice-servicenetwork-sharingconfig>
                    sharingConfig :: (Prelude.Maybe SharingConfigProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-servicenetwork.html#cfn-vpclattice-servicenetwork-tags>
                    tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServiceNetwork :: ServiceNetwork
mkServiceNetwork
  = ServiceNetwork
      {haddock_workaround_ = (), authType = Prelude.Nothing,
       name = Prelude.Nothing, sharingConfig = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties ServiceNetwork where
  toResourceProperties ServiceNetwork {..}
    = ResourceProperties
        {awsType = "AWS::VpcLattice::ServiceNetwork",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AuthType" Prelude.<$> authType,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "SharingConfig" Prelude.<$> sharingConfig,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON ServiceNetwork where
  toJSON ServiceNetwork {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AuthType" Prelude.<$> authType,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "SharingConfig" Prelude.<$> sharingConfig,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "AuthType" ServiceNetwork where
  type PropertyType "AuthType" ServiceNetwork = Value Prelude.Text
  set newValue ServiceNetwork {..}
    = ServiceNetwork {authType = Prelude.pure newValue, ..}
instance Property "Name" ServiceNetwork where
  type PropertyType "Name" ServiceNetwork = Value Prelude.Text
  set newValue ServiceNetwork {..}
    = ServiceNetwork {name = Prelude.pure newValue, ..}
instance Property "SharingConfig" ServiceNetwork where
  type PropertyType "SharingConfig" ServiceNetwork = SharingConfigProperty
  set newValue ServiceNetwork {..}
    = ServiceNetwork {sharingConfig = Prelude.pure newValue, ..}
instance Property "Tags" ServiceNetwork where
  type PropertyType "Tags" ServiceNetwork = [Tag]
  set newValue ServiceNetwork {..}
    = ServiceNetwork {tags = Prelude.pure newValue, ..}