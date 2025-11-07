module Stratosphere.QBusiness.DataAccessor (
        module Exports, DataAccessor(..), mkDataAccessor
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QBusiness.DataAccessor.ActionConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QBusiness.DataAccessor.DataAccessorAuthenticationDetailProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DataAccessor
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qbusiness-dataaccessor.html>
    DataAccessor {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qbusiness-dataaccessor.html#cfn-qbusiness-dataaccessor-actionconfigurations>
                  actionConfigurations :: [ActionConfigurationProperty],
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qbusiness-dataaccessor.html#cfn-qbusiness-dataaccessor-applicationid>
                  applicationId :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qbusiness-dataaccessor.html#cfn-qbusiness-dataaccessor-authenticationdetail>
                  authenticationDetail :: (Prelude.Maybe DataAccessorAuthenticationDetailProperty),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qbusiness-dataaccessor.html#cfn-qbusiness-dataaccessor-displayname>
                  displayName :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qbusiness-dataaccessor.html#cfn-qbusiness-dataaccessor-principal>
                  principal :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qbusiness-dataaccessor.html#cfn-qbusiness-dataaccessor-tags>
                  tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataAccessor ::
  [ActionConfigurationProperty]
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> DataAccessor
mkDataAccessor
  actionConfigurations
  applicationId
  displayName
  principal
  = DataAccessor
      {haddock_workaround_ = (),
       actionConfigurations = actionConfigurations,
       applicationId = applicationId, displayName = displayName,
       principal = principal, authenticationDetail = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties DataAccessor where
  toResourceProperties DataAccessor {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::DataAccessor",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ActionConfigurations" JSON..= actionConfigurations,
                            "ApplicationId" JSON..= applicationId,
                            "DisplayName" JSON..= displayName, "Principal" JSON..= principal]
                           (Prelude.catMaybes
                              [(JSON..=) "AuthenticationDetail" Prelude.<$> authenticationDetail,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON DataAccessor where
  toJSON DataAccessor {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ActionConfigurations" JSON..= actionConfigurations,
               "ApplicationId" JSON..= applicationId,
               "DisplayName" JSON..= displayName, "Principal" JSON..= principal]
              (Prelude.catMaybes
                 [(JSON..=) "AuthenticationDetail" Prelude.<$> authenticationDetail,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ActionConfigurations" DataAccessor where
  type PropertyType "ActionConfigurations" DataAccessor = [ActionConfigurationProperty]
  set newValue DataAccessor {..}
    = DataAccessor {actionConfigurations = newValue, ..}
instance Property "ApplicationId" DataAccessor where
  type PropertyType "ApplicationId" DataAccessor = Value Prelude.Text
  set newValue DataAccessor {..}
    = DataAccessor {applicationId = newValue, ..}
instance Property "AuthenticationDetail" DataAccessor where
  type PropertyType "AuthenticationDetail" DataAccessor = DataAccessorAuthenticationDetailProperty
  set newValue DataAccessor {..}
    = DataAccessor {authenticationDetail = Prelude.pure newValue, ..}
instance Property "DisplayName" DataAccessor where
  type PropertyType "DisplayName" DataAccessor = Value Prelude.Text
  set newValue DataAccessor {..}
    = DataAccessor {displayName = newValue, ..}
instance Property "Principal" DataAccessor where
  type PropertyType "Principal" DataAccessor = Value Prelude.Text
  set newValue DataAccessor {..}
    = DataAccessor {principal = newValue, ..}
instance Property "Tags" DataAccessor where
  type PropertyType "Tags" DataAccessor = [Tag]
  set newValue DataAccessor {..}
    = DataAccessor {tags = Prelude.pure newValue, ..}