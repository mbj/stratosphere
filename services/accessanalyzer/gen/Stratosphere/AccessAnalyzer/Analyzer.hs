module Stratosphere.AccessAnalyzer.Analyzer (
        module Exports, Analyzer(..), mkAnalyzer
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AccessAnalyzer.Analyzer.AnalyzerConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.AccessAnalyzer.Analyzer.ArchiveRuleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Analyzer
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-accessanalyzer-analyzer.html>
    Analyzer {haddock_workaround_ :: (),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-accessanalyzer-analyzer.html#cfn-accessanalyzer-analyzer-analyzerconfiguration>
              analyzerConfiguration :: (Prelude.Maybe AnalyzerConfigurationProperty),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-accessanalyzer-analyzer.html#cfn-accessanalyzer-analyzer-analyzername>
              analyzerName :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-accessanalyzer-analyzer.html#cfn-accessanalyzer-analyzer-archiverules>
              archiveRules :: (Prelude.Maybe [ArchiveRuleProperty]),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-accessanalyzer-analyzer.html#cfn-accessanalyzer-analyzer-tags>
              tags :: (Prelude.Maybe [Tag]),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-accessanalyzer-analyzer.html#cfn-accessanalyzer-analyzer-type>
              type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnalyzer :: Value Prelude.Text -> Analyzer
mkAnalyzer type'
  = Analyzer
      {haddock_workaround_ = (), type' = type',
       analyzerConfiguration = Prelude.Nothing,
       analyzerName = Prelude.Nothing, archiveRules = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Analyzer where
  toResourceProperties Analyzer {..}
    = ResourceProperties
        {awsType = "AWS::AccessAnalyzer::Analyzer",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "AnalyzerConfiguration"
                                 Prelude.<$> analyzerConfiguration,
                               (JSON..=) "AnalyzerName" Prelude.<$> analyzerName,
                               (JSON..=) "ArchiveRules" Prelude.<$> archiveRules,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Analyzer where
  toJSON Analyzer {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "AnalyzerConfiguration"
                    Prelude.<$> analyzerConfiguration,
                  (JSON..=) "AnalyzerName" Prelude.<$> analyzerName,
                  (JSON..=) "ArchiveRules" Prelude.<$> archiveRules,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AnalyzerConfiguration" Analyzer where
  type PropertyType "AnalyzerConfiguration" Analyzer = AnalyzerConfigurationProperty
  set newValue Analyzer {..}
    = Analyzer {analyzerConfiguration = Prelude.pure newValue, ..}
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