module Stratosphere.CustomerProfiles.Domain.AutoMergingProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AutoMergingProperty :: Prelude.Type
instance ToResourceProperties AutoMergingProperty
instance Prelude.Eq AutoMergingProperty
instance Prelude.Show AutoMergingProperty
instance JSON.ToJSON AutoMergingProperty