module Stratosphere.Glue.Crawler.RecrawlPolicyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RecrawlPolicyProperty :: Prelude.Type
instance ToResourceProperties RecrawlPolicyProperty
instance JSON.ToJSON RecrawlPolicyProperty