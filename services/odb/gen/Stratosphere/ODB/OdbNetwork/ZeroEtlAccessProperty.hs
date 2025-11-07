module Stratosphere.ODB.OdbNetwork.ZeroEtlAccessProperty (
        ZeroEtlAccessProperty(..), mkZeroEtlAccessProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ZeroEtlAccessProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-odbnetwork-zeroetlaccess.html>
    ZeroEtlAccessProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-odbnetwork-zeroetlaccess.html#cfn-odb-odbnetwork-zeroetlaccess-cidr>
                           cidr :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-odbnetwork-zeroetlaccess.html#cfn-odb-odbnetwork-zeroetlaccess-status>
                           status :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkZeroEtlAccessProperty :: ZeroEtlAccessProperty
mkZeroEtlAccessProperty
  = ZeroEtlAccessProperty
      {haddock_workaround_ = (), cidr = Prelude.Nothing,
       status = Prelude.Nothing}
instance ToResourceProperties ZeroEtlAccessProperty where
  toResourceProperties ZeroEtlAccessProperty {..}
    = ResourceProperties
        {awsType = "AWS::ODB::OdbNetwork.ZeroEtlAccess",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Cidr" Prelude.<$> cidr,
                            (JSON..=) "Status" Prelude.<$> status])}
instance JSON.ToJSON ZeroEtlAccessProperty where
  toJSON ZeroEtlAccessProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Cidr" Prelude.<$> cidr,
               (JSON..=) "Status" Prelude.<$> status]))
instance Property "Cidr" ZeroEtlAccessProperty where
  type PropertyType "Cidr" ZeroEtlAccessProperty = Value Prelude.Text
  set newValue ZeroEtlAccessProperty {..}
    = ZeroEtlAccessProperty {cidr = Prelude.pure newValue, ..}
instance Property "Status" ZeroEtlAccessProperty where
  type PropertyType "Status" ZeroEtlAccessProperty = Value Prelude.Text
  set newValue ZeroEtlAccessProperty {..}
    = ZeroEtlAccessProperty {status = Prelude.pure newValue, ..}