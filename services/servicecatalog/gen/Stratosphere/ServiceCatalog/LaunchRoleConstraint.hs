module Stratosphere.ServiceCatalog.LaunchRoleConstraint (
        LaunchRoleConstraint(..), mkLaunchRoleConstraint
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LaunchRoleConstraint
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchroleconstraint.html>
    LaunchRoleConstraint {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchroleconstraint.html#cfn-servicecatalog-launchroleconstraint-acceptlanguage>
                          acceptLanguage :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchroleconstraint.html#cfn-servicecatalog-launchroleconstraint-description>
                          description :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchroleconstraint.html#cfn-servicecatalog-launchroleconstraint-localrolename>
                          localRoleName :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchroleconstraint.html#cfn-servicecatalog-launchroleconstraint-portfolioid>
                          portfolioId :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchroleconstraint.html#cfn-servicecatalog-launchroleconstraint-productid>
                          productId :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchroleconstraint.html#cfn-servicecatalog-launchroleconstraint-rolearn>
                          roleArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLaunchRoleConstraint ::
  Value Prelude.Text -> Value Prelude.Text -> LaunchRoleConstraint
mkLaunchRoleConstraint portfolioId productId
  = LaunchRoleConstraint
      {haddock_workaround_ = (), portfolioId = portfolioId,
       productId = productId, acceptLanguage = Prelude.Nothing,
       description = Prelude.Nothing, localRoleName = Prelude.Nothing,
       roleArn = Prelude.Nothing}
instance ToResourceProperties LaunchRoleConstraint where
  toResourceProperties LaunchRoleConstraint {..}
    = ResourceProperties
        {awsType = "AWS::ServiceCatalog::LaunchRoleConstraint",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PortfolioId" JSON..= portfolioId, "ProductId" JSON..= productId]
                           (Prelude.catMaybes
                              [(JSON..=) "AcceptLanguage" Prelude.<$> acceptLanguage,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "LocalRoleName" Prelude.<$> localRoleName,
                               (JSON..=) "RoleArn" Prelude.<$> roleArn]))}
instance JSON.ToJSON LaunchRoleConstraint where
  toJSON LaunchRoleConstraint {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PortfolioId" JSON..= portfolioId, "ProductId" JSON..= productId]
              (Prelude.catMaybes
                 [(JSON..=) "AcceptLanguage" Prelude.<$> acceptLanguage,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "LocalRoleName" Prelude.<$> localRoleName,
                  (JSON..=) "RoleArn" Prelude.<$> roleArn])))
instance Property "AcceptLanguage" LaunchRoleConstraint where
  type PropertyType "AcceptLanguage" LaunchRoleConstraint = Value Prelude.Text
  set newValue LaunchRoleConstraint {..}
    = LaunchRoleConstraint {acceptLanguage = Prelude.pure newValue, ..}
instance Property "Description" LaunchRoleConstraint where
  type PropertyType "Description" LaunchRoleConstraint = Value Prelude.Text
  set newValue LaunchRoleConstraint {..}
    = LaunchRoleConstraint {description = Prelude.pure newValue, ..}
instance Property "LocalRoleName" LaunchRoleConstraint where
  type PropertyType "LocalRoleName" LaunchRoleConstraint = Value Prelude.Text
  set newValue LaunchRoleConstraint {..}
    = LaunchRoleConstraint {localRoleName = Prelude.pure newValue, ..}
instance Property "PortfolioId" LaunchRoleConstraint where
  type PropertyType "PortfolioId" LaunchRoleConstraint = Value Prelude.Text
  set newValue LaunchRoleConstraint {..}
    = LaunchRoleConstraint {portfolioId = newValue, ..}
instance Property "ProductId" LaunchRoleConstraint where
  type PropertyType "ProductId" LaunchRoleConstraint = Value Prelude.Text
  set newValue LaunchRoleConstraint {..}
    = LaunchRoleConstraint {productId = newValue, ..}
instance Property "RoleArn" LaunchRoleConstraint where
  type PropertyType "RoleArn" LaunchRoleConstraint = Value Prelude.Text
  set newValue LaunchRoleConstraint {..}
    = LaunchRoleConstraint {roleArn = Prelude.pure newValue, ..}