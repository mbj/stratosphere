module Stratosphere.EC2.LaunchTemplate.EbsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EbsProperty :: Prelude.Type
instance ToResourceProperties EbsProperty
instance Prelude.Eq EbsProperty
instance Prelude.Show EbsProperty
instance JSON.ToJSON EbsProperty