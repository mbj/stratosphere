module Stratosphere.EC2.IPAMResourceDiscoveryAssociation (
        IPAMResourceDiscoveryAssociation(..),
        mkIPAMResourceDiscoveryAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data IPAMResourceDiscoveryAssociation
  = IPAMResourceDiscoveryAssociation {ipamId :: (Value Prelude.Text),
                                      ipamResourceDiscoveryId :: (Value Prelude.Text),
                                      tags :: (Prelude.Maybe [Tag])}
mkIPAMResourceDiscoveryAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text -> IPAMResourceDiscoveryAssociation
mkIPAMResourceDiscoveryAssociation ipamId ipamResourceDiscoveryId
  = IPAMResourceDiscoveryAssociation
      {ipamId = ipamId,
       ipamResourceDiscoveryId = ipamResourceDiscoveryId,
       tags = Prelude.Nothing}
instance ToResourceProperties IPAMResourceDiscoveryAssociation where
  toResourceProperties IPAMResourceDiscoveryAssociation {..}
    = ResourceProperties
        {awsType = "AWS::EC2::IPAMResourceDiscoveryAssociation",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["IpamId" JSON..= ipamId,
                            "IpamResourceDiscoveryId" JSON..= ipamResourceDiscoveryId]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON IPAMResourceDiscoveryAssociation where
  toJSON IPAMResourceDiscoveryAssociation {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["IpamId" JSON..= ipamId,
               "IpamResourceDiscoveryId" JSON..= ipamResourceDiscoveryId]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "IpamId" IPAMResourceDiscoveryAssociation where
  type PropertyType "IpamId" IPAMResourceDiscoveryAssociation = Value Prelude.Text
  set newValue IPAMResourceDiscoveryAssociation {..}
    = IPAMResourceDiscoveryAssociation {ipamId = newValue, ..}
instance Property "IpamResourceDiscoveryId" IPAMResourceDiscoveryAssociation where
  type PropertyType "IpamResourceDiscoveryId" IPAMResourceDiscoveryAssociation = Value Prelude.Text
  set newValue IPAMResourceDiscoveryAssociation {..}
    = IPAMResourceDiscoveryAssociation
        {ipamResourceDiscoveryId = newValue, ..}
instance Property "Tags" IPAMResourceDiscoveryAssociation where
  type PropertyType "Tags" IPAMResourceDiscoveryAssociation = [Tag]
  set newValue IPAMResourceDiscoveryAssociation {..}
    = IPAMResourceDiscoveryAssociation
        {tags = Prelude.pure newValue, ..}