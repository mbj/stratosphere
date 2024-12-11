module Stratosphere.Deadline.Fleet.Ec2EbsVolumeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data Ec2EbsVolumeProperty :: Prelude.Type
instance ToResourceProperties Ec2EbsVolumeProperty
instance Prelude.Eq Ec2EbsVolumeProperty
instance Prelude.Show Ec2EbsVolumeProperty
instance JSON.ToJSON Ec2EbsVolumeProperty