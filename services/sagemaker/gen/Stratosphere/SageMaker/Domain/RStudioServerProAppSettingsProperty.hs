module Stratosphere.SageMaker.Domain.RStudioServerProAppSettingsProperty (
        RStudioServerProAppSettingsProperty(..),
        mkRStudioServerProAppSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RStudioServerProAppSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-rstudioserverproappsettings.html>
    RStudioServerProAppSettingsProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-rstudioserverproappsettings.html#cfn-sagemaker-domain-rstudioserverproappsettings-accessstatus>
                                         accessStatus :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-rstudioserverproappsettings.html#cfn-sagemaker-domain-rstudioserverproappsettings-usergroup>
                                         userGroup :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRStudioServerProAppSettingsProperty ::
  RStudioServerProAppSettingsProperty
mkRStudioServerProAppSettingsProperty
  = RStudioServerProAppSettingsProperty
      {haddock_workaround_ = (), accessStatus = Prelude.Nothing,
       userGroup = Prelude.Nothing}
instance ToResourceProperties RStudioServerProAppSettingsProperty where
  toResourceProperties RStudioServerProAppSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Domain.RStudioServerProAppSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AccessStatus" Prelude.<$> accessStatus,
                            (JSON..=) "UserGroup" Prelude.<$> userGroup])}
instance JSON.ToJSON RStudioServerProAppSettingsProperty where
  toJSON RStudioServerProAppSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AccessStatus" Prelude.<$> accessStatus,
               (JSON..=) "UserGroup" Prelude.<$> userGroup]))
instance Property "AccessStatus" RStudioServerProAppSettingsProperty where
  type PropertyType "AccessStatus" RStudioServerProAppSettingsProperty = Value Prelude.Text
  set newValue RStudioServerProAppSettingsProperty {..}
    = RStudioServerProAppSettingsProperty
        {accessStatus = Prelude.pure newValue, ..}
instance Property "UserGroup" RStudioServerProAppSettingsProperty where
  type PropertyType "UserGroup" RStudioServerProAppSettingsProperty = Value Prelude.Text
  set newValue RStudioServerProAppSettingsProperty {..}
    = RStudioServerProAppSettingsProperty
        {userGroup = Prelude.pure newValue, ..}