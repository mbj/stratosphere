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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-lakeformationconfiguration.html>
    LakeFormationConfigurationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-lakeformationconfiguration.html#cfn-glue-crawler-lakeformationconfiguration-accountid>
                                        accountId :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-lakeformationconfiguration.html#cfn-glue-crawler-lakeformationconfiguration-uselakeformationcredentials>
                                        useLakeFormationCredentials :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLakeFormationConfigurationProperty ::
  LakeFormationConfigurationProperty
mkLakeFormationConfigurationProperty
  = LakeFormationConfigurationProperty
      {haddock_workaround_ = (), accountId = Prelude.Nothing,
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