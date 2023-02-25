module Stratosphere.EC2.SpotFleet.GroupIdentifierProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data GroupIdentifierProperty :: Prelude.Type
instance ToResourceProperties GroupIdentifierProperty
instance JSON.ToJSON GroupIdentifierProperty