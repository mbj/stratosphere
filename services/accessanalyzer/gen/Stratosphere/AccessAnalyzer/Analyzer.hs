module Stratosphere.AccessAnalyzer.Analyzer (
        module Exports, Analyzer(..), mkAnalyzer
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AccessAnalyzer.Analyzer.ArchiveRuleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Analyzer
  = Analyzer {analyzerName :: (Prelude.Maybe (Value Prelude.Text)),
              archiveRules :: (Prelude.Maybe [ArchiveRuleProperty]),
              tags :: (Prelude.Maybe [Tag]),
              type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnalyzer :: Value Prelude.Text -> Analyzer
mkAnalyzer type'
  = Analyzer
      {type' = type', analyzerName = Prelude.Nothing,
       archiveRules = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Analyzer where
  toResourceProperties Analyzer {..}
    = ResourceProperties
        {awsType = "AWS::AccessAnalyzer::Analyzer",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "AnalyzerName" Prelude.<$> analyzerName,
                               (JSON..=) "ArchiveRules" Prelude.<$> archiveRules,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Analyzer where
  toJSON Analyzer {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "AnalyzerName" Prelude.<$> analyzerName,
                  (JSON..=) "ArchiveRules" Prelude.<$> archiveRules,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AnalyzerName" Analyzer where
  type PropertyType "AnalyzerName" Analyzer = Value Prelude.Text
  set newValue Analyzer {..}
    = Analyzer {analyzerName = Prelude.pure newValue, ..}
instance Property "ArchiveRules" Analyzer where
  type PropertyType "ArchiveRules" Analyzer = [ArchiveRuleProperty]
  set newValue Analyzer {..}
    = Analyzer {archiveRules = Prelude.pure newValue, ..}
instance Property "Tags" Analyzer where
  type PropertyType "Tags" Analyzer = [Tag]
  set newValue Analyzer {..}
    = Analyzer {tags = Prelude.pure newValue, ..}
instance Property "Type" Analyzer where
  type PropertyType "Type" Analyzer = Value Prelude.Text
  set newValue Analyzer {..} = Analyzer {type' = newValue, ..}