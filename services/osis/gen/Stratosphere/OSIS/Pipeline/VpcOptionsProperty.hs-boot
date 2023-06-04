module Stratosphere.OSIS.Pipeline.VpcOptionsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data VpcOptionsProperty :: Prelude.Type
instance ToResourceProperties VpcOptionsProperty
instance JSON.ToJSON VpcOptionsProperty