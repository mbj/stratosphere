module Stratosphere.SageMaker.ModelCard.AdditionalInformationProperty (
        AdditionalInformationProperty(..), mkAdditionalInformationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AdditionalInformationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-additionalinformation.html>
    AdditionalInformationProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-additionalinformation.html#cfn-sagemaker-modelcard-additionalinformation-caveatsandrecommendations>
                                   caveatsAndRecommendations :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-additionalinformation.html#cfn-sagemaker-modelcard-additionalinformation-customdetails>
                                   customDetails :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-additionalinformation.html#cfn-sagemaker-modelcard-additionalinformation-ethicalconsiderations>
                                   ethicalConsiderations :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAdditionalInformationProperty :: AdditionalInformationProperty
mkAdditionalInformationProperty
  = AdditionalInformationProperty
      {haddock_workaround_ = (),
       caveatsAndRecommendations = Prelude.Nothing,
       customDetails = Prelude.Nothing,
       ethicalConsiderations = Prelude.Nothing}
instance ToResourceProperties AdditionalInformationProperty where
  toResourceProperties AdditionalInformationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelCard.AdditionalInformation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CaveatsAndRecommendations"
                              Prelude.<$> caveatsAndRecommendations,
                            (JSON..=) "CustomDetails" Prelude.<$> customDetails,
                            (JSON..=) "EthicalConsiderations"
                              Prelude.<$> ethicalConsiderations])}
instance JSON.ToJSON AdditionalInformationProperty where
  toJSON AdditionalInformationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CaveatsAndRecommendations"
                 Prelude.<$> caveatsAndRecommendations,
               (JSON..=) "CustomDetails" Prelude.<$> customDetails,
               (JSON..=) "EthicalConsiderations"
                 Prelude.<$> ethicalConsiderations]))
instance Property "CaveatsAndRecommendations" AdditionalInformationProperty where
  type PropertyType "CaveatsAndRecommendations" AdditionalInformationProperty = Value Prelude.Text
  set newValue AdditionalInformationProperty {..}
    = AdditionalInformationProperty
        {caveatsAndRecommendations = Prelude.pure newValue, ..}
instance Property "CustomDetails" AdditionalInformationProperty where
  type PropertyType "CustomDetails" AdditionalInformationProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue AdditionalInformationProperty {..}
    = AdditionalInformationProperty
        {customDetails = Prelude.pure newValue, ..}
instance Property "EthicalConsiderations" AdditionalInformationProperty where
  type PropertyType "EthicalConsiderations" AdditionalInformationProperty = Value Prelude.Text
  set newValue AdditionalInformationProperty {..}
    = AdditionalInformationProperty
        {ethicalConsiderations = Prelude.pure newValue, ..}