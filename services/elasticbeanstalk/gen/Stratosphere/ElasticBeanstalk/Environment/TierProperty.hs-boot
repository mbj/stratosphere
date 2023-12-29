module Stratosphere.ElasticBeanstalk.Environment.TierProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TierProperty :: Prelude.Type
instance ToResourceProperties TierProperty
instance Prelude.Eq TierProperty
instance Prelude.Show TierProperty
instance JSON.ToJSON TierProperty