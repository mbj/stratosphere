module Stratosphere.OpenSearchService.Domain.VPCOptionsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data VPCOptionsProperty :: Prelude.Type
instance ToResourceProperties VPCOptionsProperty
instance JSON.ToJSON VPCOptionsProperty