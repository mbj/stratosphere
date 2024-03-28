module Stratosphere.Glue.Crawler.LakeFormationConfigurationProperty (
        LakeFormationConfigurationProperty(..),
        mkLakeFormationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LakeFormationConfigurationProperty
  = LakeFormationConfigurationProperty {accountId :: (Prelude.Maybe (Value Prelude.Text)),
                                        useLakeFormationCredentials :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLakeFormationConfigurationProperty ::
  LakeFormationConfigurationProperty
mkLakeFormationConfigurationProperty
  = LakeFormationConfigurationProperty
      {accountId = Prelude.Nothing,
       useLakeFormationCredentials = Prelude.Nothing}
instance ToResourceProperties LakeFormationConfigurationProperty where
  toResourceProperties LakeFormationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Crawler.LakeFormationConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AccountId" Prelude.<$> accountId,
                            (JSON..=) "UseLakeFormationCredentials"
                              Prelude.<$> useLakeFormationCredentials])}
instance JSON.ToJSON LakeFormationConfigurationProperty where
  toJSON LakeFormationConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AccountId" Prelude.<$> accountId,
               (JSON..=) "UseLakeFormationCredentials"
                 Prelude.<$> useLakeFormationCredentials]))
instance Property "AccountId" LakeFormationConfigurationProperty where
  type PropertyType "AccountId" LakeFormationConfigurationProperty = Value Prelude.Text
  set newValue LakeFormationConfigurationProperty {..}
    = LakeFormationConfigurationProperty
        {accountId = Prelude.pure newValue, ..}
instance Property "UseLakeFormationCredentials" LakeFormationConfigurationProperty where
  type PropertyType "UseLakeFormationCredentials" LakeFormationConfigurationProperty = Value Prelude.Bool
  set newValue LakeFormationConfigurationProperty {..}
    = LakeFormationConfigurationProperty
        {useLakeFormationCredentials = Prelude.pure newValue, ..}