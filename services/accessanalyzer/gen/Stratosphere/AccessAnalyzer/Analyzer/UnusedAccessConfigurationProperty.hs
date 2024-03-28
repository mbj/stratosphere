module Stratosphere.AccessAnalyzer.Analyzer.UnusedAccessConfigurationProperty (
        UnusedAccessConfigurationProperty(..),
        mkUnusedAccessConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UnusedAccessConfigurationProperty
  = UnusedAccessConfigurationProperty {unusedAccessAge :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUnusedAccessConfigurationProperty ::
  UnusedAccessConfigurationProperty
mkUnusedAccessConfigurationProperty
  = UnusedAccessConfigurationProperty
      {unusedAccessAge = Prelude.Nothing}
instance ToResourceProperties UnusedAccessConfigurationProperty where
  toResourceProperties UnusedAccessConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::AccessAnalyzer::Analyzer.UnusedAccessConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "UnusedAccessAge" Prelude.<$> unusedAccessAge])}
instance JSON.ToJSON UnusedAccessConfigurationProperty where
  toJSON UnusedAccessConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "UnusedAccessAge" Prelude.<$> unusedAccessAge]))
instance Property "UnusedAccessAge" UnusedAccessConfigurationProperty where
  type PropertyType "UnusedAccessAge" UnusedAccessConfigurationProperty = Value Prelude.Integer
  set newValue UnusedAccessConfigurationProperty {}
    = UnusedAccessConfigurationProperty
        {unusedAccessAge = Prelude.pure newValue, ..}