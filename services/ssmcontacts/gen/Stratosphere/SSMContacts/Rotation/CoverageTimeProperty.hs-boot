module Stratosphere.SSMContacts.Rotation.CoverageTimeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CoverageTimeProperty :: Prelude.Type
instance ToResourceProperties CoverageTimeProperty
instance JSON.ToJSON CoverageTimeProperty