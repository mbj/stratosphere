module Stratosphere.AccessAnalyzer.Analyzer.ArchiveRuleProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ArchiveRuleProperty :: Prelude.Type
instance ToResourceProperties ArchiveRuleProperty
instance Prelude.Eq ArchiveRuleProperty
instance Prelude.Show ArchiveRuleProperty
instance JSON.ToJSON ArchiveRuleProperty