module Stratosphere.ServiceCatalog.LaunchTemplateConstraint (
        LaunchTemplateConstraint(..), mkLaunchTemplateConstraint
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LaunchTemplateConstraint
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchtemplateconstraint.html>
    LaunchTemplateConstraint {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchtemplateconstraint.html#cfn-servicecatalog-launchtemplateconstraint-acceptlanguage>
                              acceptLanguage :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchtemplateconstraint.html#cfn-servicecatalog-launchtemplateconstraint-description>
                              description :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchtemplateconstraint.html#cfn-servicecatalog-launchtemplateconstraint-portfolioid>
                              portfolioId :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchtemplateconstraint.html#cfn-servicecatalog-launchtemplateconstraint-productid>
                              productId :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchtemplateconstraint.html#cfn-servicecatalog-launchtemplateconstraint-rules>
                              rules :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLaunchTemplateConstraint ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> LaunchTemplateConstraint
mkLaunchTemplateConstraint portfolioId productId rules
  = LaunchTemplateConstraint
      {haddock_workaround_ = (), portfolioId = portfolioId,
       productId = productId, rules = rules,
       acceptLanguage = Prelude.Nothing, description = Prelude.Nothing}
instance ToResourceProperties LaunchTemplateConstraint where
  toResourceProperties LaunchTemplateConstraint {..}
    = ResourceProperties
        {awsType = "AWS::ServiceCatalog::LaunchTemplateConstraint",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PortfolioId" JSON..= portfolioId, "ProductId" JSON..= productId,
                            "Rules" JSON..= rules]
                           (Prelude.catMaybes
                              [(JSON..=) "AcceptLanguage" Prelude.<$> acceptLanguage,
                               (JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON LaunchTemplateConstraint where
  toJSON LaunchTemplateConstraint {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PortfolioId" JSON..= portfolioId, "ProductId" JSON..= productId,
               "Rules" JSON..= rules]
              (Prelude.catMaybes
                 [(JSON..=) "AcceptLanguage" Prelude.<$> acceptLanguage,
                  (JSON..=) "Description" Prelude.<$> description])))
instance Property "AcceptLanguage" LaunchTemplateConstraint where
  type PropertyType "AcceptLanguage" LaunchTemplateConstraint = Value Prelude.Text
  set newValue LaunchTemplateConstraint {..}
    = LaunchTemplateConstraint
        {acceptLanguage = Prelude.pure newValue, ..}
instance Property "Description" LaunchTemplateConstraint where
  type PropertyType "Description" LaunchTemplateConstraint = Value Prelude.Text
  set newValue LaunchTemplateConstraint {..}
    = LaunchTemplateConstraint
        {description = Prelude.pure newValue, ..}
instance Property "PortfolioId" LaunchTemplateConstraint where
  type PropertyType "PortfolioId" LaunchTemplateConstraint = Value Prelude.Text
  set newValue LaunchTemplateConstraint {..}
    = LaunchTemplateConstraint {portfolioId = newValue, ..}
instance Property "ProductId" LaunchTemplateConstraint where
  type PropertyType "ProductId" LaunchTemplateConstraint = Value Prelude.Text
  set newValue LaunchTemplateConstraint {..}
    = LaunchTemplateConstraint {productId = newValue, ..}
instance Property "Rules" LaunchTemplateConstraint where
  type PropertyType "Rules" LaunchTemplateConstraint = Value Prelude.Text
  set newValue LaunchTemplateConstraint {..}
    = LaunchTemplateConstraint {rules = newValue, ..}