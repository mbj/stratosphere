module Stratosphere.ECR.PublicRepository.RepositoryCatalogDataProperty (
        RepositoryCatalogDataProperty(..), mkRepositoryCatalogDataProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RepositoryCatalogDataProperty
  = RepositoryCatalogDataProperty {aboutText :: (Prelude.Maybe (Value Prelude.Text)),
                                   architectures :: (Prelude.Maybe (ValueList Prelude.Text)),
                                   operatingSystems :: (Prelude.Maybe (ValueList Prelude.Text)),
                                   repositoryDescription :: (Prelude.Maybe (Value Prelude.Text)),
                                   usageText :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRepositoryCatalogDataProperty :: RepositoryCatalogDataProperty
mkRepositoryCatalogDataProperty
  = RepositoryCatalogDataProperty
      {aboutText = Prelude.Nothing, architectures = Prelude.Nothing,
       operatingSystems = Prelude.Nothing,
       repositoryDescription = Prelude.Nothing,
       usageText = Prelude.Nothing}
instance ToResourceProperties RepositoryCatalogDataProperty where
  toResourceProperties RepositoryCatalogDataProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECR::PublicRepository.RepositoryCatalogData",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AboutText" Prelude.<$> aboutText,
                            (JSON..=) "Architectures" Prelude.<$> architectures,
                            (JSON..=) "OperatingSystems" Prelude.<$> operatingSystems,
                            (JSON..=) "RepositoryDescription"
                              Prelude.<$> repositoryDescription,
                            (JSON..=) "UsageText" Prelude.<$> usageText])}
instance JSON.ToJSON RepositoryCatalogDataProperty where
  toJSON RepositoryCatalogDataProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AboutText" Prelude.<$> aboutText,
               (JSON..=) "Architectures" Prelude.<$> architectures,
               (JSON..=) "OperatingSystems" Prelude.<$> operatingSystems,
               (JSON..=) "RepositoryDescription"
                 Prelude.<$> repositoryDescription,
               (JSON..=) "UsageText" Prelude.<$> usageText]))
instance Property "AboutText" RepositoryCatalogDataProperty where
  type PropertyType "AboutText" RepositoryCatalogDataProperty = Value Prelude.Text
  set newValue RepositoryCatalogDataProperty {..}
    = RepositoryCatalogDataProperty
        {aboutText = Prelude.pure newValue, ..}
instance Property "Architectures" RepositoryCatalogDataProperty where
  type PropertyType "Architectures" RepositoryCatalogDataProperty = ValueList Prelude.Text
  set newValue RepositoryCatalogDataProperty {..}
    = RepositoryCatalogDataProperty
        {architectures = Prelude.pure newValue, ..}
instance Property "OperatingSystems" RepositoryCatalogDataProperty where
  type PropertyType "OperatingSystems" RepositoryCatalogDataProperty = ValueList Prelude.Text
  set newValue RepositoryCatalogDataProperty {..}
    = RepositoryCatalogDataProperty
        {operatingSystems = Prelude.pure newValue, ..}
instance Property "RepositoryDescription" RepositoryCatalogDataProperty where
  type PropertyType "RepositoryDescription" RepositoryCatalogDataProperty = Value Prelude.Text
  set newValue RepositoryCatalogDataProperty {..}
    = RepositoryCatalogDataProperty
        {repositoryDescription = Prelude.pure newValue, ..}
instance Property "UsageText" RepositoryCatalogDataProperty where
  type PropertyType "UsageText" RepositoryCatalogDataProperty = Value Prelude.Text
  set newValue RepositoryCatalogDataProperty {..}
    = RepositoryCatalogDataProperty
        {usageText = Prelude.pure newValue, ..}